from jinja2 import Template

# Your values to fill in
data = {
    "gitlab_base_url": "https://gitlab.com",
    "gitlab_project_id": "12345",
    "gitlab_private_token": "your-secret-token-here",
    "gitlab_branch": "main",
    "csv_directory": "C:\\Test\\CSVFiles",
    "version_tag": "v1.0",
    "commit_message_format": "Backup for {version} {date}"
}

# Read the template
with open("gitlab_backup.ps1.j2", "r") as file:
    template = Template(file.read())

# Fill in the blanks and save the result
result = template.render(data)
with open("gitlab_backup.ps1", "w") as file:
    file.write(result)

print("Script generated as gitlab_backup.ps1!")