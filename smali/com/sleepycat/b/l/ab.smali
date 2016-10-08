.class public final Lcom/sleepycat/b/l/ab;
.super Lcom/sleepycat/b/l/y;
.source "NameLN.java"


# instance fields
.field public a:Lcom/sleepycat/b/c/h;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sleepycat/b/l/y;-><init>()V

    .line 48
    new-instance v0, Lcom/sleepycat/b/c/h;

    invoke-direct {v0}, Lcom/sleepycat/b/c/h;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    new-array v0, v1, [B

    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/y;-><init>([B)V

    .line 39
    iput-object p1, p0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 40
    iput-boolean v1, p0, Lcom/sleepycat/b/l/ab;->b:Z

    .line 41
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/sleepycat/b/l/y;->a()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/c/i;[BJZLcom/sleepycat/b/n/z;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/g/a/k;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/g/af;",
            "Lcom/sleepycat/b/c/i;",
            "[BJZ",
            "Lcom/sleepycat/b/n/z;",
            "Lcom/sleepycat/b/g/av;",
            ")",
            "Lcom/sleepycat/b/g/a/k",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v1, Lcom/sleepycat/b/g/a/o;

    .line 2496
    iget-object v4, p2, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move-object v2, p1

    move-object v3, p0

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 203
    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/b/g/a/o;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/c/h;[BJZLcom/sleepycat/b/n/z;Lcom/sleepycat/b/g/av;)V

    return-object v1
.end method

.method protected final a(ZZ)Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 115
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sleepycat/b/g/af;->e:Lcom/sleepycat/b/g/af;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/g/af;->f:Lcom/sleepycat/b/g/af;

    goto :goto_0
.end method

.method public final a(IZ)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "<deleted val=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/b/l/ab;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2025
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "<id val=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;)V

    .line 137
    iget-object v0, p0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;)V

    .line 138
    iget-boolean v0, p0, Lcom/sleepycat/b/l/ab;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    .line 139
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 140
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;I)V

    .line 149
    iget-object v0, p0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 150
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 151
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/l/ab;->b:Z

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    instance-of v1, p1, Lcom/sleepycat/b/l/ab;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    check-cast p1, Lcom/sleepycat/b/l/ab;

    .line 166
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/g/at;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    iget-object v2, p1, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-boolean v1, p0, Lcom/sleepycat/b/l/ab;->b:Z

    iget-boolean v2, p1, Lcom/sleepycat/b/l/ab;->b:Z

    if-ne v1, v2, :cond_0

    .line 178
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final b(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/c/h;->a(Ljava/lang/StringBuilder;Z)V

    .line 188
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "<nameLN>"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "</nameLN>"

    return-object v0
.end method

.method final h()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/l/ab;->b:Z

    .line 59
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sleepycat/b/l/ab;->b:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
