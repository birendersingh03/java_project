FROM centos
RUN cp -r $WORKSPACE/target/$artifactId-$version /tmp
