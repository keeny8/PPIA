# claude-env-launcher.ps1
# Custom PowerShell launcher for Claude Code with PAI_DIR and env vars

param(
    [string[]]$Args = @()
)

# Environment variables from .claude/settings.json
$env:PAI_DIR = "$env:USERPROFILE/.claude"
$env:DA = "PAI"
$env:PAI_SIMPLE_COLORS = "0"
$env:CLAUDE_CODE_MAX_OUTPUT_TOKENS = "64000"

# Verify PAI_DIR exists
if (-not (Test-Path $env:PAI_DIR)) {
    Write-Warning "PAI_DIR '$env:PAI_DIR' does not exist. Creating directory..."
    New-Item -ItemType Directory -Path $env:PAI_DIR -Force | Out-Null
}

# Write-Host "🚀 Launching Claude Code with env vars:" -ForegroundColor Green
# Write-Host "   PAI_DIR=$env:PAI_DIR" -ForegroundColor Cyan
# Write-Host "   DA=$env:DA" -ForegroundColor Cyan
# Write-Host "   PAI_SIMPLE_COLORS=$env:PAI_SIMPLE_COLORS" -ForegroundColor Cyan
# Write-Host "   CLAUDE_CODE_MAX_OUTPUT_TOKENS=$env:CLAUDE_CODE_MAX_OUTPUT_TOKENS" -ForegroundColor Cyan
# Write-Host ""

# Launch claude with passed arguments
& claude @Args

# Keep vars active for interactive shell if no args passed
if ($Args.Count -eq 0) {
    Write-Host "Interactive shell ready. Type 'exit' to quit." -ForegroundColor Yellow
    powershell
}
