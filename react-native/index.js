import React from "react";
import {
  AppRegistry,
  Text,
  View,
  StyleSheet,
  Button,
  Alert,
} from "react-native";

const SharedReactNativeComponent = () => {
  const showNativeAlert = () => {
    Alert.alert("Native alert", "Shown from React Native!", [
      {
        text: "OK",
        style: "cancel",
      },
    ]);
  };
  return (
    <View style={styles.container}>
      <Text>Here is a shared React Native view! 📱</Text>
      <Button title="Show Alert" onPress={showNativeAlert} />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "lavender",
    justifyContent: "center",
    alignItems: "center",
  },
});

AppRegistry.registerComponent(
  "SharedReactNativeComponent",
  () => SharedReactNativeComponent
);
