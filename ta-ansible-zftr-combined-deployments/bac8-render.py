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





#############################################

from jinja2 import Template

# Your test values
data = {
    "gitlab_base_url": "https://gitlab.com",
    "gitlab_project_id": "43328313",
    "gitlab_private_token": "glpat-xyxJz-ktxXkPjJzo3bAy",
    "gitlab_branch": "test-case-data-dev",
    "csv_directory": "F:\\Nectar\\CXA\\liferay-ce-portal-7.4.3.78-ga78\\test-case-data",
    "version_tag": "2024.2.1",
    "commit_message_format": "backup for {version} {date} [skip ci]"
}

# Load the template
with open("gitlab_backup.ps1.j2", "r") as file:
    template = Template(file.read())

# Render it with your values
result = template.render(data)
with open("gitlab_backup.ps1", "w") as file:
    file.write(result)

print("Generated gitlab_backup.ps1!")
