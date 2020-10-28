# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
#import os
#import sys
#sys.path.insert(0, os.path.abspath('.'))

from sphinx.builders.html import StandaloneHTMLBuilder
import subprocess, os

# Doxygen
subprocess.call('doxygen Doxyfile.MVP', shell=True)

# -- Project information -----------------------------------------------------

project = 'SchwurblerMVP'
copyright = '2020, Mommel'
author = 'Mommel'
version = '1.0.0'
# The full version, including alpha/beta/rc tags
release = '1.0.0'
language = 'en'

# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.intersphinx',
    'sphinx.ext.autosectionlabel',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax',
    'sphinx.ext.ifconfig',
    'sphinx.ext.viewcode',
    'sphinx.ext.inheritance_diagram',
    'sphinx.ext.autosummary',
    'sphinx.ext.coverage',
    'sphinx.ext.ifconfig',
    'sphinx.ext.inheritance_diagram',
    'sphinx.ext.intersphinx',
    'sphinx.ext.mathjax',
    'sphinx.ext.todo',
    'sphinx.ext.viewcode',
    'sphinx_markdown_builder',
    'sphinx_git',
    'breathe',
]


# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store', 'build/*']

html_theme = 'sphinx_rtd_theme'
html_theme_options = {
    'canonical_url': '',
    'analytics_id': '',  # Provided by Google in your dashboard
    'display_version': True,
    'prev_next_buttons_location': 'bottom',
    'style_external_links': False,
    'logo_only': False,

    # Toc options
    'collapse_navigation': True,
    'sticky_navigation': True,
    'navigation_depth': 4,
    'includehidden': True,
    'titles_only': False
}
html_logo = '_static/hscommunity_logo.jpg'
github_url = 'https://github.com/mommel/hs-lr-midi-schwurbler'
# html_baseurl = ''

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']

# -- Breathe configuration -------------------------------------------------

breathe_projects = {
	"SchwurblerMVP": "_build/xml/",
    "SchwurblAir" : "../SchwurblAir/_build/xml/"
}
breathe_implementation_filename_extensions = [ '.c', '.cpp' ]

breathe_projects_source = {
    "auto" : ( "../../examples/specific", [ "auto_function.h", "auto_class.h" ] )
    }

breathe_domain_by_extension = {
    "h" : "cpp",
    "c" : "c"
}
breathe_default_project = "SchwurblerMVP"
breathe_default_members = ('members', 'undoc-members')


# Options for LaTeX output
# ------------------------

# The paper size ('letter' or 'a4').
#latex_paper_size = 'letter'

# The font size ('10pt', '11pt' or '12pt').
#latex_font_size = '10pt'

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title, author, document class [howto/manual]).
# latex_documents = [
#   ('index', 'BreatheExample.tex', 'BreatheExample Documentation',
#    'Michael Jones', 'manual'),
# ]

# The name of an image file (relative to this directory) to place at the top of
# the title page.
#latex_logo = None

# For "manual" documents, if this is true, then toplevel headings are parts,
# not chapters.
#latex_use_parts = False

# Additional stuff for the LaTeX preamble.
#latex_preamble = ''

# Documents to append as an appendix to all manuals.
#latex_appendices = []

# If false, no module index is generated.
#latex_use_modindex = True

# def run_doxygen(folder):
#     """Run the doxygen make command in the designated folder"""

#     try:
#         retcode = subprocess.call("cd %s; make DOXYGEN=doxygen" % folder, shell=True)
#         if retcode < 0:
#             sys.stderr.write("doxygen terminated by signal %s" % (-retcode))
#     except OSError as e:
#         sys.stderr.write("doxygen execution failed: %s" % e)


# def generate_doxygen_xml(app):
#     """Run the doxygen make commands if we're on the ReadTheDocs server"""

#     read_the_docs_build = os.environ.get('READTHEDOCS', None) == 'True'

#     if read_the_docs_build:

#         # Attempt to build the doxygen files on the RTD server. Explicitly override the path/name used
#         # for executing doxygen to simply be 'doxygen' to stop the makefiles looking for the executable.
#         # This is because the `which doxygen` effort seemed to fail when tested on the RTD server.
#         run_doxygen("../../examples/doxygen")
#         run_doxygen("../../examples/specific")
#         run_doxygen("../../examples/tinyxml")


# def setup(app):

#     # Approach borrowed from the Sphinx docs
#     app.add_object_type(
#             'confval',
#             'confval',
#             objname='configuration value',
#             indextemplate='pair: %s; configuration value'
#             )

#     # Add hook for building doxygen xml when needed
#     app.connect("builder-inited", generate_doxygen_xml)

#     app.add_config_value('documentation_build', 'development', True)

