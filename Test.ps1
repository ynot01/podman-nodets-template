$ImageName = '{0:x8}' -f (Get-Random -Maximum 0x100000000) # Gets a random hex of 4 bytes to use as a name

if (!(podman -v)) {
    [Console]::ForegroundColor = 'Red'
    Write-Output('podman not detected; install at https://podman.io/')
    [Console]::ForegroundColor = 'White'
    return
}

[Console]::ForegroundColor = 'Cyan'
podman build . --tag $ImageName # Builds the image
[Console]::ForegroundColor = 'Green'
podman run --rm --rmi $ImageName # Runs the image, then self-deletes the container and image silently
[Console]::ForegroundColor = 'White'
