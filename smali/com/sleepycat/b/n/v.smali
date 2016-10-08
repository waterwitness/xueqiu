.class public Lcom/sleepycat/b/n/v;
.super Ljava/lang/Object;
.source "RollbackStart.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field public a:Lcom/sleepycat/b/p/au;

.field public b:J

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/sleepycat/b/p/aq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/p/au;JLjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/au;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sleepycat/b/n/v;->a:Lcom/sleepycat/b/p/au;

    .line 48
    iput-wide p2, p0, Lcom/sleepycat/b/n/v;->b:J

    .line 49
    iput-object p4, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    .line 50
    new-instance v0, Lcom/sleepycat/b/p/aq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/aq;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/n/v;->d:Lcom/sleepycat/b/p/aq;

    .line 51
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/n/v;->a:Lcom/sleepycat/b/p/au;

    .line 1101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 75
    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v0

    iget-wide v2, p0, Lcom/sleepycat/b/n/v;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/n/v;->d:Lcom/sleepycat/b/p/aq;

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/p/aq;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    iget-object v1, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .prologue
    .line 119
    const-string v0, " matchpointVLSN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/n/v;->a:Lcom/sleepycat/b/p/au;

    .line 3101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 119
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, " matchpointLSN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-wide v0, p0, Lcom/sleepycat/b/n/v;->b:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 130
    const-string v1, " activeTxnIds="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/n/v;->d:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sleepycat/b/n/v;->a:Lcom/sleepycat/b/p/au;

    .line 2101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 91
    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 92
    iget-wide v0, p0, Lcom/sleepycat/b/n/v;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 93
    iget-object v0, p0, Lcom/sleepycat/b/n/v;->d:Lcom/sleepycat/b/p/aq;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V

    .line 94
    iget-object v0, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 95
    iget-object v0, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 104
    new-instance v1, Lcom/sleepycat/b/p/au;

    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/b/n/v;->a:Lcom/sleepycat/b/p/au;

    .line 105
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/n/v;->b:J

    .line 107
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/n/v;->d:Lcom/sleepycat/b/p/aq;

    .line 108
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 109
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    .line 110
    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    iget-object v2, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 146
    instance-of v1, p1, Lcom/sleepycat/b/n/v;

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    check-cast p1, Lcom/sleepycat/b/n/v;

    .line 152
    iget-object v1, p0, Lcom/sleepycat/b/n/v;->a:Lcom/sleepycat/b/p/au;

    iget-object v2, p1, Lcom/sleepycat/b/n/v;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/b/n/v;->b:J

    iget-wide v4, p1, Lcom/sleepycat/b/n/v;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/n/v;->d:Lcom/sleepycat/b/p/aq;

    iget-object v2, p1, Lcom/sleepycat/b/n/v;->d:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/aq;->a(Lcom/sleepycat/b/p/aq;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    iget-object v2, p1, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/n/v;->a(Ljava/lang/StringBuilder;Z)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
