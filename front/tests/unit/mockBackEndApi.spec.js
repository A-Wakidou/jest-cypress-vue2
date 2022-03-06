import { mount, flushPromises } from '@vue/test-utils'
import axios from 'axios'
import Cart from '@/views/Cart.vue'
jest.mock("axios", () => ({
  get: () => Promise.resolve({ data: [{ val: 1 }] })
}));
// var  apiDatas = [
//   {
//     id: 1,
//     name: "Rick Sanchez",
//     quantity: '10'
//   },
//   {
//     id: 2,
//     name: "Morty Smith",
//     quantity: '15'
//   }
// ]

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
  mount(Cart)
  await flushPromises()
    expect(axios.get).toHaveBeenCalledTimes(1)
    expect(axios.get).toHaveBeenCalledWith('https://rickandmortyapi.com/api/character')
    // expect(axios.get).toHaveBeenCalledTimes(1)
  // expect(axios.get).toHaveBeenCalledWith('http://localhost:3000/cart/getCart')
  // var result = await axios.get('http://localhost:3000/cart/getCart')
  // expect(result).toEqual(apiDatas)
  })
})