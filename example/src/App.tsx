import { StyleSheet, View, Text } from 'react-native';
import { getObjectFromCpp } from 'react-native-cpp-turbo';

console.log(getObjectFromCpp());

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Result: ...</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
