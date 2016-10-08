.class public Lcom/sleepycat/b/i/b/ac;
.super Lcom/sleepycat/b/i/c/az;
.source "Protocol.java"


# instance fields
.field a:Lcom/sleepycat/b/i/b/s;

.field b:Lcom/sleepycat/b/i/b/ai;

.field c:Lcom/sleepycat/b/i/b/ai;

.field d:J

.field final e:I

.field f:I

.field final synthetic g:Lcom/sleepycat/b/i/b/x;

.field private m:Lcom/sleepycat/b/am;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;Lcom/sleepycat/b/i/b/ai;JIILcom/sleepycat/b/am;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iput-object p1, p0, Lcom/sleepycat/b/i/b/ac;->g:Lcom/sleepycat/b/i/b/x;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/az;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    .line 115
    iput-object v0, p0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    .line 116
    iput-object v0, p0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    .line 117
    iput-object v0, p0, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    .line 118
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sleepycat/b/i/b/ac;->d:J

    .line 130
    iput-object p2, p0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    .line 131
    iput-object p3, p0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    .line 132
    iput-object p4, p0, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    .line 133
    iput-wide p5, p0, Lcom/sleepycat/b/i/b/ac;->d:J

    .line 134
    iput p7, p0, Lcom/sleepycat/b/i/b/ac;->e:I

    .line 135
    iput p8, p0, Lcom/sleepycat/b/i/b/ac;->f:I

    .line 136
    iput-object p9, p0, Lcom/sleepycat/b/i/b/ac;->m:Lcom/sleepycat/b/am;

    .line 137
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->g:Lcom/sleepycat/b/i/b/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/b/x;->g:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/ac;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    invoke-interface {v0}, Lcom/sleepycat/b/i/b/s;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    invoke-interface {v0}, Lcom/sleepycat/b/i/b/ai;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    invoke-interface {v0}, Lcom/sleepycat/b/i/b/ai;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/i/b/ac;->d:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/i/b/ac;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/sleepycat/b/i/b/ac;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/x;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/i/b/ac;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/ac;->m:Lcom/sleepycat/b/am;

    invoke-virtual {v1}, Lcom/sleepycat/b/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_0
    return-object v0

    .line 252
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    iget-wide v2, p0, Lcom/sleepycat/b/i/b/ac;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    if-ne p0, p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/c/az;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 198
    goto :goto_0

    .line 201
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/b/ac;

    .line 2306
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->g:Lcom/sleepycat/b/i/b/x;

    .line 3306
    iget-object v3, p1, Lcom/sleepycat/b/i/b/ac;->g:Lcom/sleepycat/b/i/b/x;

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 203
    goto :goto_0

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    if-nez v2, :cond_5

    .line 207
    iget-object v2, p1, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    if-eqz v2, :cond_6

    move v0, v1

    .line 208
    goto :goto_0

    .line 210
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 211
    goto :goto_0

    .line 214
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    if-nez v2, :cond_7

    .line 215
    iget-object v2, p1, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    if-eqz v2, :cond_8

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 219
    goto :goto_0

    .line 222
    :cond_8
    iget v2, p0, Lcom/sleepycat/b/i/b/ac;->e:I

    iget v3, p1, Lcom/sleepycat/b/i/b/ac;->e:I

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 223
    goto :goto_0

    .line 226
    :cond_9
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/x;->a(Ljava/lang/String;)I

    move-result v2

    if-le v2, v0, :cond_b

    .line 227
    iget v2, p0, Lcom/sleepycat/b/i/b/ac;->f:I

    iget v3, p1, Lcom/sleepycat/b/i/b/ac;->f:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_a
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->m:Lcom/sleepycat/b/am;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/ac;->m:Lcom/sleepycat/b/am;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/am;->a(Lcom/sleepycat/b/am;)I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    .line 232
    goto :goto_0

    .line 236
    :cond_b
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    if-nez v2, :cond_c

    .line 237
    iget-object v2, p1, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    if-eqz v2, :cond_d

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_c
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 241
    goto/16 :goto_0

    .line 244
    :cond_d
    iget-wide v2, p0, Lcom/sleepycat/b/i/b/ac;->d:J

    iget-wide v4, p1, Lcom/sleepycat/b/i/b/ac;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 245
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-super {p0}, Lcom/sleepycat/b/i/c/az;->hashCode()I

    move-result v0

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    .line 1306
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->g:Lcom/sleepycat/b/i/b/x;

    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sleepycat/b/i/b/ac;->e:I

    add-int/2addr v0, v2

    .line 175
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    if-nez v2, :cond_3

    :goto_2
    add-int/2addr v0, v1

    .line 177
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/sleepycat/b/i/b/ac;->d:J

    iget-wide v4, p0, Lcom/sleepycat/b/i/b/ac;->d:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 180
    iget-object v1, p0, Lcom/sleepycat/b/i/b/ac;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/x;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 181
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sleepycat/b/i/b/ac;->f:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sleepycat/b/i/b/ac;->m:Lcom/sleepycat/b/am;

    invoke-virtual {v2}, Lcom/sleepycat/b/am;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 184
    :cond_0
    return v0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method
