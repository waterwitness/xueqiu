.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 80
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1

    .prologue
    .line 370
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextChar(Ljava/lang/StringBuilder;IC)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 351
    .line 352
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_0

    .line 354
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    .line 356
    :cond_0
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuilder;IC)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 342
    .line 343
    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 345
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    .line 347
    :cond_0
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuilder;I)Z
    .locals 2

    .prologue
    .line 338
    const-string v0, "AEIOU"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    if-ltz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 363
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 366
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 388
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/16 v11, 0x4b

    const/16 v10, 0x53

    const/16 v9, 0x48

    const/4 v1, 0x1

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    const-string v0, ""

    .line 334
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 99
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    aget-char v3, v0, v2

    sparse-switch v3, :sswitch_data_0

    .line 141
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 144
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v3, v2

    .line 147
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v7

    if-ge v0, v7, :cond_1f

    if-ge v3, v6, :cond_1f

    .line 149
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 151
    const/16 v7, 0x43

    if-eq v0, v7, :cond_4

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v7

    if-nez v7, :cond_5

    .line 154
    :cond_4
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_3
    move v0, v3

    .line 328
    :goto_4
    add-int/lit8 v3, v0, 0x1

    .line 330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v7

    if-le v0, v7, :cond_3

    .line 331
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 111
    :sswitch_0
    aget-char v3, v0, v1

    const/16 v6, 0x4e

    if-ne v3, v6, :cond_6

    .line 112
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v0, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 114
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    :sswitch_1
    aget-char v3, v0, v1

    const/16 v6, 0x45

    if-ne v3, v6, :cond_7

    .line 119
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v0, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    :sswitch_2
    aget-char v3, v0, v1

    const/16 v6, 0x52

    if-ne v3, v6, :cond_8

    .line 126
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v0, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :cond_8
    aget-char v3, v0, v1

    if-ne v3, v9, :cond_9

    .line 130
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v0, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 131
    const/16 v0, 0x57

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 133
    :cond_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 137
    :sswitch_3
    aput-char v10, v0, v2

    .line 138
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 160
    :pswitch_0
    if-nez v3, :cond_5

    .line 161
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_4

    .line 165
    :pswitch_1
    const/16 v7, 0x4d

    invoke-direct {p0, v4, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 169
    :cond_a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 170
    goto :goto_4

    .line 173
    :pswitch_2
    invoke-direct {p0, v4, v3, v10}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "EIY"

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 178
    :cond_b
    const-string v0, "CIA"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 179
    const/16 v0, 0x58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 180
    goto/16 :goto_4

    .line 182
    :cond_c
    invoke-direct {p0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "EIY"

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 184
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 185
    goto/16 :goto_4

    .line 187
    :cond_d
    invoke-direct {p0, v4, v3, v10}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v4, v3, v9}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 189
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 190
    goto/16 :goto_4

    .line 192
    :cond_e
    invoke-direct {p0, v4, v3, v9}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 193
    if-nez v3, :cond_f

    const/4 v0, 0x3

    if-lt v6, v0, :cond_f

    const/4 v0, 0x2

    invoke-direct {p0, v4, v0}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 196
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 198
    :cond_f
    const/16 v0, 0x58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 201
    :cond_10
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 203
    goto/16 :goto_4

    .line 205
    :pswitch_3
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x47

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "EIY"

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 208
    const/16 v0, 0x4a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x2

    goto/16 :goto_4

    .line 210
    :cond_11
    const/16 v0, 0x54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 212
    goto/16 :goto_4

    .line 214
    :pswitch_4
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v4, v3, v9}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v0

    if-nez v0, :cond_5

    .line 218
    :cond_12
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, v4, v3, v9}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, v3, 0x2

    invoke-direct {p0, v4, v0}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    :cond_13
    if-lez v3, :cond_14

    const-string v0, "GN"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "GNED"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    :cond_14
    const/16 v0, 0x47

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    .line 234
    :goto_5
    invoke-direct {p0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "EIY"

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_16

    if-nez v0, :cond_16

    .line 237
    const/16 v0, 0x4a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    :cond_15
    move v0, v2

    .line 232
    goto :goto_5

    .line 239
    :cond_16
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 241
    goto/16 :goto_4

    .line 243
    :pswitch_5
    invoke-direct {p0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 246
    if-lez v3, :cond_17

    const-string v0, "CSPTG"

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 250
    :cond_17
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v4, v0}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 260
    :pswitch_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 261
    goto/16 :goto_4

    .line 263
    :pswitch_7
    if-lez v3, :cond_18

    .line 264
    const/16 v7, 0x43

    invoke-direct {p0, v4, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v7

    if-nez v7, :cond_5

    .line 265
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 268
    :cond_18
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 270
    goto/16 :goto_4

    .line 272
    :pswitch_8
    invoke-direct {p0, v4, v3, v9}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 274
    const/16 v0, 0x46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 276
    :cond_19
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 278
    goto/16 :goto_4

    .line 280
    :pswitch_9
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 281
    goto/16 :goto_4

    .line 283
    :pswitch_a
    const-string v0, "SH"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "SIO"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "SIA"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 286
    :cond_1a
    const/16 v0, 0x58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 288
    :cond_1b
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 290
    goto/16 :goto_4

    .line 292
    :pswitch_b
    const-string v0, "TIA"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "TIO"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 294
    :cond_1c
    const/16 v0, 0x58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 295
    goto/16 :goto_4

    .line 297
    :cond_1d
    const-string v0, "TCH"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 302
    const-string v0, "TH"

    invoke-direct {p0, v4, v3, v0}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 303
    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 305
    :cond_1e
    const/16 v0, 0x54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 307
    goto/16 :goto_4

    .line 309
    :pswitch_c
    const/16 v0, 0x46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 312
    :pswitch_d
    invoke-direct {p0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, 0x1

    invoke-direct {p0, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 314
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_4

    .line 318
    :pswitch_e
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    .line 320
    goto/16 :goto_4

    .line 322
    :pswitch_f
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 334
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
    .end sparse-switch

    .line 154
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0

    .prologue
    .line 427
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
