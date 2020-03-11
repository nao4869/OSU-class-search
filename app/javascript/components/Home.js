import React from 'react';
import PropTypes from 'prop-types';
class About extends React.Component {
    render() {
        return (
            <React.Fragment>
                <div className="center jumbotron">
                    <h1>Course Search</h1>

                    <h2>
                        <a href={this.props.link.path}>
                            {this.props.link.text}
                        </a>
                    </h2>
                    <br />
                    <div className="row">
                        <p>
                            List of Institutions - Check all current
                            institutions and create a new institution
                        </p>
                        <p>
                            Create a new Course - Create new courses for
                            institutions
                        </p>
                        <p>
                            Create New Review - Create new reviews for courses
                        </p>
                        <p>
                            Welcome to the Oregon State University Course Review
                            website. This tool was created by students in the
                            School of Engineering's Online eCampus program,
                            majoring in Electrical Engineering and Computer
                            Science. The purpose of this tool is to provide
                            visible feedback about course content and instructor
                            quality as a resource for the benefit of future
                            students. The reviews you find here were written by
                            actual students. Anyone can view the content. If you
                            would like to contribute a review to this site, you
                            will need to sign in using your ONID name and
                            password to verify that you have taken the class
                            which you are reviewing.
                        </p>
                    </div>
                </div>
            </React.Fragment>
        );
    }
}

About.propTypes = {
    link: {
        text: PropTypes.string,
        path: PropTypes.string
    }
};
export default About;
