#
#--------------------------------------------------------------------------
# Image Setup
#--------------------------------------------------------------------------
#

ARG SCORPION_HTTPD_VERSION

FROM httpd:${SCORPION_HTTPD_VERSION}

# Copy default config.
COPY ./config/httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy public files into container.
COPY ./html/ /usr/local/apache2/htdocs/
