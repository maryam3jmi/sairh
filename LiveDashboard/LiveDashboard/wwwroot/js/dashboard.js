document.addEventListener("DOMContentLoaded", function () {
    const widget = document.querySelector(".sairh-live-widget");

    if (!widget) {
        return;
    }

    const slides = Array.from(widget.querySelectorAll(".sairh-session-slide"));
    const dots = Array.from(widget.querySelectorAll(".sairh-slider-dot"));
    const nextButton = widget.querySelector(".sairh-slider-arrow.next");
    const previousButton = widget.querySelector(".sairh-slider-arrow.previous");
    const clock = widget.querySelector(".sairh-current-time");

    let currentIndex = 0;
    let autoSlideTimer = null;

    function showSlide(index, direction = "next") {
        if (slides.length === 0) return;

        const normalizedIndex = (index + slides.length) % slides.length;
        const currentSlide = slides[currentIndex];
        const nextSlideElement = slides[normalizedIndex];

        if (currentSlide && currentSlide !== nextSlideElement) {
            currentSlide.classList.remove("enter-from-next", "enter-from-previous");
            currentSlide.classList.add(
                direction === "next" ? "leave-to-previous" : "leave-to-next"
            );

            window.setTimeout(function () {
                currentSlide.classList.remove(
                    "active",
                    "leave-to-previous",
                    "leave-to-next"
                );
            }, 650);
        }

        nextSlideElement.classList.remove("leave-to-previous", "leave-to-next");
        nextSlideElement.classList.add(
            "active",
            direction === "next" ? "enter-from-next" : "enter-from-previous"
        );

        window.requestAnimationFrame(function () {
            window.requestAnimationFrame(function () {
                nextSlideElement.classList.remove(
                    "enter-from-next",
                    "enter-from-previous"
                );
            });
        });

        dots.forEach(function (dot, dotIndex) {
            dot.classList.toggle("active", dotIndex === normalizedIndex);
        });

        currentIndex = normalizedIndex;
    }

    function nextSlide() {
        showSlide(currentIndex + 1, "next");
    }

    function previousSlide() {
        showSlide(currentIndex - 1, "previous");
    }

    function stopAutoSlide() {
        if (autoSlideTimer !== null) {
            window.clearInterval(autoSlideTimer);
            autoSlideTimer = null;
        }
    }

    function startAutoSlide() {
        stopAutoSlide();

        if (slides.length <= 1) return;

        autoSlideTimer = window.setInterval(nextSlide, 8000);
    }

    function getLanguage(slide) {
        return slide.dataset.language === "en" ? "en" : "ar";
    }

    function formatDuration(milliseconds, language) {
        const totalSeconds = Math.max(0, Math.floor(milliseconds / 1000));
        const hours = Math.floor(totalSeconds / 3600);
        const minutes = Math.floor((totalSeconds % 3600) / 60);
        const seconds = totalSeconds % 60;

        if (language === "en") {
            if (hours > 0) return `${hours}h ${minutes}m`;
            if (minutes > 0) return `${minutes}m ${seconds}s`;
            return `${seconds}s`;
        }

        if (hours > 0) return `${hours} ساعة و${minutes} دقيقة`;
        if (minutes > 0) return `${minutes} دقيقة و${seconds} ثانية`;
        return `${seconds} ثانية`;
    }

    function updateStatus(statusContainer, statusText, detailLabel, now, start, end, language) {
        const fiveMinutes = 5 * 60 * 1000;
        const timeUntilStart = start.getTime() - now.getTime();

        statusContainer.classList.remove(
            "live",
            "upcoming",
            "starting-soon",
            "completed"
        );

        if (now >= start && now < end) {
            statusContainer.classList.add("live");
            statusText.textContent = language === "en" ? "Live Now" : "يعرض الآن";
            detailLabel.textContent = language === "en"
                ? "Time Remaining"
                : "متبقي على نهاية الجلسة";
            return;
        }

        if (now < start && timeUntilStart <= fiveMinutes) {
            statusContainer.classList.add("starting-soon");
            statusText.textContent = language === "en"
                ? "Starting Soon"
                : "تبدأ خلال دقائق";
            detailLabel.textContent = language === "en"
                ? "Starts In"
                : "تبدأ الجلسة بعد";
            return;
        }

        if (now < start) {
            statusContainer.classList.add("upcoming");
            statusText.textContent = language === "en"
                ? "Next Session"
                : "الجلسة القادمة";
            detailLabel.textContent = language === "en"
                ? "Starts In"
                : "تبدأ الجلسة بعد";
            return;
        }

        statusContainer.classList.add("completed");
        statusText.textContent = language === "en"
            ? "Completed"
            : "انتهت الجلسة";
        detailLabel.textContent = language === "en"
            ? "Session Status"
            : "حالة الجلسة";
    }

    function updateSlides() {
        const now = new Date();

        slides.forEach(function (slide) {
            const start = new Date(slide.dataset.start);
            const end = new Date(slide.dataset.end);
            const language = getLanguage(slide);

            const countdown = slide.querySelector(".sairh-countdown");
            const progressFill = slide.querySelector(".sairh-progress-fill");
            const statusContainer = slide.querySelector(".sairh-status");
            const statusText = slide.querySelector(".sairh-status-text");
            const detailLabel = slide.querySelector(".sairh-countdown-label");

            if (!countdown || !progressFill || !statusContainer || !statusText || !detailLabel) {
                return;
            }

            updateStatus(
                statusContainer,
                statusText,
                detailLabel,
                now,
                start,
                end,
                language
            );

            if (now >= start && now < end) {
                const remaining = end.getTime() - now.getTime();
                countdown.textContent = formatDuration(remaining, language);

                const totalDuration = end.getTime() - start.getTime();
                const elapsed = now.getTime() - start.getTime();

                const progress = Math.min(
                    100,
                    Math.max(0, (elapsed / totalDuration) * 100)
                );

                progressFill.style.width = `${progress}%`;
            } else if (now < start) {
                countdown.textContent = formatDuration(
                    start.getTime() - now.getTime(),
                    language
                );
                progressFill.style.width = "0%";
            } else {
                countdown.textContent = language === "en"
                    ? "Session ended"
                    : "انتهت الجلسة";
                progressFill.style.width = "100%";
            }
        });
    }

    function updateClock() {
        if (!clock) return;

        const locale = clock.dataset.locale || "ar-SA";

        clock.textContent = new Date().toLocaleTimeString(locale, {
            hour: "2-digit",
            minute: "2-digit"
        });
    }

    dots.forEach(function (dot) {
        dot.addEventListener("click", function () {
            const index = Number(dot.dataset.index);
            const direction = index >= currentIndex ? "next" : "previous";

            showSlide(index, direction);
            startAutoSlide();
        });
    });

    if (nextButton) {
        nextButton.addEventListener("click", function () {
            nextSlide();
            startAutoSlide();
        });
    }

    if (previousButton) {
        previousButton.addEventListener("click", function () {
            previousSlide();
            startAutoSlide();
        });
    }

    widget.addEventListener("mouseenter", stopAutoSlide);
    widget.addEventListener("mouseleave", startAutoSlide);

    updateSlides();
    updateClock();
    startAutoSlide();

    window.setInterval(updateSlides, 1000);
    window.setInterval(updateClock, 1000);
});
