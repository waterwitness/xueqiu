.class public final Lcom/xueqiu/android/base/util/af;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .prologue
    .line 28
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 31
    new-instance v11, Lnet/a/a/a/b;

    invoke-direct {v11}, Lnet/a/a/a/b;-><init>()V

    .line 32
    sget-object v0, Lnet/a/a/a/a;->a:Lnet/a/a/a/a;

    .line 1152
    iput-object v0, v11, Lnet/a/a/a/b;->b:Lnet/a/a/a/a;

    .line 33
    sget-object v0, Lnet/a/a/a/c;->b:Lnet/a/a/a/c;

    .line 1173
    iput-object v0, v11, Lnet/a/a/a/b;->c:Lnet/a/a/a/c;

    .line 34
    sget-object v0, Lnet/a/a/a/d;->b:Lnet/a/a/a/d;

    .line 1194
    iput-object v0, v11, Lnet/a/a/a/b;->a:Lnet/a/a/a/d;

    .line 35
    const-string v1, ""

    .line 36
    array-length v12, v10

    .line 38
    const/4 v0, 0x0

    move v8, v0

    move-object v9, v1

    :goto_0
    if-ge v8, v12, :cond_1

    .line 40
    :try_start_0
    aget-char v0, v10, v8

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\u4E00-\\u9FA5]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    aget-char v0, v10, v8

    .line 2103
    invoke-static {v0}, Lnet/a/a/c;->a(C)[Ljava/lang/String;

    move-result-object v1

    .line 2105
    if-eqz v1, :cond_e

    .line 2107
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    array-length v0, v1

    if-ge v7, v0, :cond_d

    .line 2108
    aget-object v0, v1, v7

    .line 3041
    sget-object v2, Lnet/a/a/a/c;->c:Lnet/a/a/a/c;

    .line 3161
    iget-object v3, v11, Lnet/a/a/a/b;->c:Lnet/a/a/a/c;

    .line 3041
    if-ne v2, v3, :cond_2

    sget-object v2, Lnet/a/a/a/d;->b:Lnet/a/a/a/d;

    .line 3182
    iget-object v3, v11, Lnet/a/a/a/b;->a:Lnet/a/a/a/d;

    .line 3041
    if-eq v2, v3, :cond_0

    sget-object v2, Lnet/a/a/a/d;->a:Lnet/a/a/a/d;

    .line 4182
    iget-object v3, v11, Lnet/a/a/a/b;->a:Lnet/a/a/a/d;

    .line 3041
    if-ne v2, v3, :cond_2

    .line 3044
    :cond_0
    new-instance v0, Lnet/a/a/a/a/a;

    const-string v1, "tone marks cannot be added to v or u:"

    invoke-direct {v0, v1}, Lnet/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnet/a/a/a/a/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/a/a/a/a/a;->printStackTrace()V

    .line 50
    :cond_1
    return-object v9

    .line 3047
    :cond_2
    :try_start_1
    sget-object v2, Lnet/a/a/a/c;->b:Lnet/a/a/a/c;

    .line 5161
    iget-object v3, v11, Lnet/a/a/a/b;->c:Lnet/a/a/a/c;

    .line 3047
    if-ne v2, v3, :cond_6

    .line 3048
    const-string v2, "[1-5]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3054
    :cond_3
    :goto_2
    sget-object v2, Lnet/a/a/a/d;->b:Lnet/a/a/a/d;

    .line 7182
    iget-object v3, v11, Lnet/a/a/a/b;->a:Lnet/a/a/a/d;

    .line 3054
    if-ne v2, v3, :cond_c

    .line 3055
    const-string v2, "u:"

    const-string v3, "v"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3060
    :cond_4
    :goto_3
    sget-object v2, Lnet/a/a/a/a;->a:Lnet/a/a/a/a;

    .line 9140
    iget-object v3, v11, Lnet/a/a/a/b;->b:Lnet/a/a/a/a;

    .line 3060
    if-ne v2, v3, :cond_5

    .line 3061
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 2108
    :cond_5
    aput-object v0, v1, v7

    .line 2107
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 3049
    :cond_6
    sget-object v2, Lnet/a/a/a/c;->c:Lnet/a/a/a/c;

    .line 6161
    iget-object v3, v11, Lnet/a/a/a/b;->c:Lnet/a/a/a/c;

    .line 3049
    if-ne v2, v3, :cond_3

    .line 3050
    const-string v2, "u:"

    const-string v3, "v"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7092
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7094
    const-string v2, "[a-z]*[1-5]?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7098
    const/16 v6, 0x24

    .line 7099
    const/4 v5, -0x1

    .line 7107
    const-string v2, "[a-z]*[1-5]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    .line 7112
    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 7113
    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 7114
    const-string v4, "ou"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 7116
    const/4 v14, -0x1

    if-eq v14, v2, :cond_7

    .line 7118
    const/16 v3, 0x61

    .line 7136
    :goto_4
    const/16 v4, 0x24

    if-eq v4, v3, :cond_3

    const/4 v4, -0x1

    if-eq v4, v2, :cond_3

    .line 7137
    const-string v4, "aeiouv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 7138
    add-int/lit8 v4, v13, -0x1

    .line 7140
    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v4

    .line 7142
    const-string v4, "\u0101\u00e1\u0103\u00e0a\u0113\u00e9\u0115\u00e8e\u012b\u00ed\u012d\u00eci\u014d\u00f3\u014f\u00f2o\u016b\u00fa\u016d\u00f9u\u01d6\u01d8\u01da\u01dc\u00fc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 7144
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 7146
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "v"

    const-string v13, "\u00fc"

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7148
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7149
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "v"

    const-string v3, "\u00fc"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7152
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 7119
    :cond_7
    const/4 v2, -0x1

    if-eq v2, v3, :cond_8

    .line 7121
    const/16 v2, 0x65

    move v15, v3

    move v3, v2

    move v2, v15

    goto :goto_4

    .line 7122
    :cond_8
    const/4 v2, -0x1

    if-eq v2, v4, :cond_9

    .line 7124
    const-string v2, "ou"

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    move v2, v4

    goto :goto_4

    .line 7126
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-ltz v2, :cond_10

    .line 7127
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[aeiouv]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 7130
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    .line 7126
    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 7163
    :cond_b
    const-string v2, "v"

    const-string v3, "\u00fc"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3056
    :cond_c
    sget-object v2, Lnet/a/a/a/d;->c:Lnet/a/a/a/d;

    .line 8182
    iget-object v3, v11, Lnet/a/a/a/b;->a:Lnet/a/a/a/d;

    .line 3056
    if-ne v2, v3, :cond_4

    .line 3057
    const-string v2, "u:"

    const-string v3, "\u00fc"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    move-object v0, v1

    .line 42
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_7
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v9, v0

    goto/16 :goto_0

    .line 2114
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 44
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v1, v10, v8

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lnet/a/a/a/a/a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_7

    :cond_10
    move v2, v5

    move v3, v6

    goto/16 :goto_4
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, ""

    move v1, v2

    .line 61
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 10052
    invoke-static {v3}, Lnet/a/a/c;->a(C)[Ljava/lang/String;

    move-result-object v4

    .line 65
    if-eqz v4, :cond_0

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
