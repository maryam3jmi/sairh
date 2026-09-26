# Use Windows Server Core with IIS for ASP.NET 4.8
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2022

# Enable IIS
RUN Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole,IIS-WebServer,IIS-CommonHttpFeatures,IIS-HttpErrors,IIS-HttpRedirect,IIS-ApplicationDevelopment,IIS-NetFxExtensibility4.8,IIS-ASPNET45,IIS-ISAPIExtensions,IIS-ISAPIFilter,IIS-Security,IIS-WindowsAuthentication,IIS-RequestFiltering,IIS-Performance,IIS-HttpCompressionStatic,IIS-WebServerManagementTools,IIS-ManagementConsole,WAS-WindowsActivationService,WAS-ProcessModel,WAS-NetFxEnvironment,WAS-ConfigurationAPI -NoRestart

# Set working directory
WORKDIR /inetpub/wwwroot

# Copy the published application
COPY ./AIE/AIE/ ./

# Expose port 80
EXPOSE 80

# Start IIS
CMD ["powershell", "-Command", "Start-Service W3SVC; Start-Service WAS; Write-Host 'IIS Started'; while ($true) { Start-Sleep 3600 }"]