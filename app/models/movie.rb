class Movie < ActiveRecord::Base
    # saves the title to the movie; creates a new record in the database
    def self.create_with_title(title)
        self.create(title: title)
    end

    # returns the first item in the movies table
    def self.first_movie
        self.first
    end

    # returns the last item in the movies table
    def self.last_movie
        self.last
    end

    # returns the number of items in the movies table
    def self.movie_count
        self.count
    end

    # returns the movie with the corresponding id
    def self.find_movie_with_id(id)
        self.find(id)
    end

    # returns the movie with the corresponding attributes
    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end

    # returns a list of movies released after 2002
    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

    # updates one movie
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    # updates the title of all the movies
    def self.update_all_titles(updated_title)
        self.update(title: updated_title)
    end

    # deletes the record with the corresponding id
    def self.delete_by_id(id)
        self.find(id).destroy
    end

    # deletes all the movies from the movies table
    def self.delete_all_movies
        self.destroy_all
    end
end