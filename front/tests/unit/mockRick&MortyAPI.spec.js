import { mount, flushPromises } from '@vue/test-utils'
import axios from 'axios'
import Home from '@/views/Home.vue'
jest.mock("axios", () => ({
  get: () => Promise.resolve({ data: [{ val: 1 }] })
}));
describe('Tests Front Request API', () => {
  it('Request launch', async() => {
    var  apiDatas = [
      {
        id: 1,
        name: "Rick Sanchez",
        quantity: '10'
      },
      {
        id: 2,
        name: "Morty Smith",
        quantity: '15'
      }
    ]
  mount(Home)
  await flushPromises()
    expect(axios.get).toHaveBeenCalledTimes(1)
    expect(axios.get).toHaveBeenCalledWith('https://rickandmortyapi.com/api/character')
    // var result = await axios.get('https://rickandmortyapi.com/api/character')
    // expect(result).toEqual(apiDatas)
  })
})