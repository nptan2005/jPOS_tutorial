plugins {
    id("org.jpos.jposapp") version "0.0.12"
    id("java-library")
    id("idea")
}

group = "org.jpos.jposapp"
version = "3.0.0-SNAPSHOT"

repositories {
    mavenCentral()
    maven {
        url = uri("https://jpos.org/maven")
    }
}

dependencies {
    implementation("org.jpos:jpos:3.0.0")
    implementation(files("./build/libs/jPOS_tutorial-3.0.0-SNAPSHOT.jar"))
}
