
### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

### Start the dbt project
- Use the command dbt init project_name to initialize the dbt project
- then go to the profiles.yml which is created in the user directory under .dbt folder
- update the credentials in the profiles.yml file
- then in models folder create a subfolder and name it 
- create a schema.yml file that has details about the tables in the database in that subfolder
- then  create sql files in that subfolder where you can perform the transformation
- to run the dbt as the docker image use this command 
- docker run \
  --network=host
  --mount type=bind,source=path/to/project,target=/usr/app \
  --mount type=bind,source=path/to/profiles.yml,target=/root/.dbt/ \
  <dbt_image_name> \ run 

- Pull the docker image using this command 
docker pull ghcr.io/dbt-labs/dbt-postgres:latest
  
