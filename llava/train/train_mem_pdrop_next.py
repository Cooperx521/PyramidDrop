from llava.train.pdrop_train_next import train

if __name__ == "__main__":
    train(attn_implementation="flash_attention_2")
