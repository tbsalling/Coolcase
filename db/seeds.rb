# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

projects = Project.create([{ :name => 'Project 1', :description => 'Description 1' },
                           { :name => 'Project 2', :description => 'Description 2' },
                           { :name => 'Project 3', :description => 'Description 3' }])

project1 = Project.find_by_name('Project 1')
project2 = Project.find_by_name('Project 2')
project3 = Project.find_by_name('Project 3')

usecases_for_project1 = Usecase.create([{ :project_id => project1.id, :name => 'Use case 1.1', :description => 'Use case description 1.1'},
                                        { :project_id => project1.id, :name => 'Use case 1.2', :description => 'Use case description 1.2'}]);

usecases_for_project2 = Usecase.create([{ :project_id => project2.id, :name => 'Use case 2.1', :description => 'Use case description 2.1'},
                                        { :project_id => project2.id, :name => 'Use case 2.2', :description => 'Use case description 2.2'},
                                        { :project_id => project2.id, :name => 'Use case 2.3', :description => 'Use case description 2.3'}]);

usecases_for_project3 = Usecase.create([{ :project_id => project3.id, :name => 'Use case 3.1', :description => 'Use case description 3.1'},
                                        { :project_id => project3.id, :name => 'Use case 3.2', :description => 'Use case description 3.2'}]);

actors_for_project1 = Actor.create([{ :project_id => project1.id, :name => 'Actor 1.1', :description => 'Actor description 1.1'},
                                    { :project_id => project1.id, :name => 'Actor 1.2', :description => 'Actor description 1.2'},
                                    { :project_id => project1.id, :name => 'Actor 1.3', :description => 'Actor description 1.3'},
                                    { :project_id => project1.id, :name => 'Actor 1.4', :description => 'Actor description 1.4'}]);

actors_for_project2 = Actor.create([{ :project_id => project2.id, :name => 'Actor 2.1', :description => 'Actor description 2.1'},
                                    { :project_id => project2.id, :name => 'Actor 2.2', :description => 'Actor description 2.2'}]);

actors_for_project3 = Actor.create([{ :project_id => project3.id, :name => 'Actor 3.1', :description => 'Actor description 3.1'},
                                    { :project_id => project3.id, :name => 'Actor 3.2', :description => 'Actor description 3.2'}]);
