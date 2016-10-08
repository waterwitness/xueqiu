.class public final Lcom/sleepycat/b/c/bk;
.super Ljava/lang/Object;
.source "TriggerUtils.java"


# direct methods
.method static a([[B)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 34
    if-nez p0, :cond_1

    .line 35
    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v0

    .line 43
    :cond_0
    return v0

    .line 39
    :cond_1
    array-length v1, p0

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    .line 40
    array-length v3, p0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, p0, v1

    .line 41
    invoke-static {v2}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v2

    add-int/2addr v2, v0

    .line 40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method static a(Ljava/lang/String;[[BLjava/lang/ClassLoader;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 109
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 110
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 111
    aget-object v0, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "trigger:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p2}, Lcom/sleepycat/b/c/i;->a([BLjava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 115
    invoke-interface {v0, p0}, Lcom/sleepycat/b/m/d;->a(Ljava/lang/String;)Lcom/sleepycat/b/m/d;

    .line 116
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 118
    goto :goto_0
.end method

.method static a(Ljava/lang/StringBuilder;[[BLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[[B",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 158
    :cond_0
    return-void

    .line 141
    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<trigger name=\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sleepycat/b/m/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" database name=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/sleepycat/b/m/d;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" className=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/sleepycat/b/m/d;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 152
    :cond_3
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<trigger name=\"?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" className=\"?\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static a(Ljava/nio/ByteBuffer;[[B)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 56
    invoke-static {p0, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 64
    :cond_0
    return-void

    .line 59
    :cond_1
    array-length v1, p1

    invoke-static {p0, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 60
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 61
    invoke-static {p0, v2}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/nio/ByteBuffer;)[[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {p0}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 83
    :cond_0
    new-array v2, v0, [[B

    move v0, v1

    .line 84
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 85
    invoke-static {p0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 88
    goto :goto_0
.end method
