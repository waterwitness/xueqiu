.class public final Lcom/sleepycat/b/p/aq;
.super Ljava/util/Date;
.source "Timestamp.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 22
    div-long v0, p1, v4

    mul-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 23
    rem-long v0, p1, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sleepycat/b/p/aq;->a:I

    .line 24
    iget v0, p0, Lcom/sleepycat/b/p/aq;->a:I

    if-gez v0, :cond_0

    .line 25
    const v0, 0x3b9aca00

    iget v1, p0, Lcom/sleepycat/b/p/aq;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/p/aq;->a:I

    .line 26
    div-long v0, p1, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/aq;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-super {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget v1, p0, Lcom/sleepycat/b/p/aq;->a:I

    iget v2, p1, Lcom/sleepycat/b/p/aq;->a:I

    if-ne v1, v2, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 140
    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 145
    instance-of v0, p1, Lcom/sleepycat/b/p/aq;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/sleepycat/b/p/aq;

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/p/aq;->a(Lcom/sleepycat/b/p/aq;)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTime()J
    .locals 4

    .prologue
    .line 31
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 32
    iget v2, p0, Lcom/sleepycat/b/p/aq;->a:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 37
    invoke-super {p0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 38
    invoke-super {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 39
    invoke-super {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    .line 40
    invoke-super {p0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 41
    invoke-super {p0}, Ljava/util/Date;->getMinutes()I

    move-result v8

    .line 42
    invoke-super {p0}, Ljava/util/Date;->getSeconds()I

    move-result v9

    .line 50
    const-string v10, "000000000"

    .line 51
    const-string v4, "0000"

    .line 54
    const/16 v5, 0x3e8

    if-ge v0, v5, :cond_0

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    invoke-virtual {v4, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 63
    :goto_0
    if-ge v1, v12, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 69
    :goto_1
    if-ge v2, v12, :cond_2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 75
    :goto_2
    if-ge v3, v12, :cond_3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 81
    :goto_3
    if-ge v8, v12, :cond_4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 87
    :goto_4
    if-ge v9, v12, :cond_5

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_5
    iget v1, p0, Lcom/sleepycat/b/p/aq;->a:I

    if-nez v1, :cond_6

    .line 94
    const-string v1, "0"

    .line 114
    :goto_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 115
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    .line 66
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_1

    .line 72
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_2

    .line 78
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_3

    .line 84
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 90
    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 96
    :cond_6
    iget v1, p0, Lcom/sleepycat/b/p/aq;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x9

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v8, v2, [C

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v11, v2, v8, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 105
    const/16 v1, 0x8

    .line 106
    :goto_7
    aget-char v2, v8, v1

    const/16 v9, 0x30

    if-ne v2, v9, :cond_7

    .line 107
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 110
    :cond_7
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v8, v11, v1}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    goto/16 :goto_6
.end method
