BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  up_word = word.upcase
  BLOCKS.none? do |block|
    up_word.count(block) > 1
  end
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')
