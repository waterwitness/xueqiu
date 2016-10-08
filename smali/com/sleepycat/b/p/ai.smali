.class public Lcom/sleepycat/b/p/ai;
.super Ljava/lang/Object;
.source "StatGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic c:Z


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/p/ag;",
            "Lcom/sleepycat/b/p/af",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/p/ai;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/p/ag;",
            "Lcom/sleepycat/b/p/af",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/sleepycat/b/p/ai;->d:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/ag;)I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/o;

    .line 188
    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 2031
    :cond_0
    iget v0, v0, Lcom/sleepycat/b/p/o;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Z)Lcom/sleepycat/b/p/ai;
    .locals 5

    .prologue
    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/af;

    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/sleepycat/b/p/af;->h()Lcom/sleepycat/b/p/ag;

    move-result-object v3

    .line 1087
    invoke-virtual {v0}, Lcom/sleepycat/b/p/af;->e()Lcom/sleepycat/b/p/af;

    move-result-object v4

    .line 1088
    invoke-virtual {v0}, Lcom/sleepycat/b/p/af;->a()V

    .line 178
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/p/af;->h()Lcom/sleepycat/b/p/ag;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sleepycat/b/p/af;->e()Lcom/sleepycat/b/p/af;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    :cond_1
    new-instance v0, Lcom/sleepycat/b/p/ai;

    iget-object v2, p0, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/b/p/ai;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/af;

    .line 147
    invoke-virtual {v0}, Lcom/sleepycat/b/p/af;->a()V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/ai;)V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/ag;

    .line 104
    iget-object v2, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/p/af;

    .line 105
    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/af;

    .line 116
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/af;->a(Lcom/sleepycat/b/p/af;)V

    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public final b(Lcom/sleepycat/b/p/ai;)Lcom/sleepycat/b/p/ai;
    .locals 5

    .prologue
    .line 123
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/ag;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/af;

    .line 131
    iget-object v2, p1, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/p/af;

    .line 132
    if-nez v2, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/sleepycat/b/p/af;->e()Lcom/sleepycat/b/p/af;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/af;->b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Lcom/sleepycat/b/p/ai;

    iget-object v1, p0, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/b/p/ai;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/z;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/af;

    .line 156
    invoke-virtual {v0}, Lcom/sleepycat/b/p/af;->t_()V

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public final c(Lcom/sleepycat/b/p/ag;)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 200
    .line 201
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/af;

    .line 202
    if-nez v0, :cond_0

    move-wide v0, v2

    .line 214
    :goto_0
    return-wide v0

    .line 204
    :cond_0
    instance-of v1, v0, Lcom/sleepycat/b/p/z;

    if-eqz v1, :cond_1

    .line 205
    check-cast v0, Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 206
    :cond_1
    instance-of v1, v0, Lcom/sleepycat/b/p/d;

    if-eqz v1, :cond_2

    .line 207
    check-cast v0, Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 208
    :cond_2
    instance-of v1, v0, Lcom/sleepycat/b/p/q;

    if-eqz v1, :cond_3

    .line 209
    check-cast v0, Lcom/sleepycat/b/p/q;

    .line 2039
    iget-object v0, v0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 209
    invoke-virtual {v0}, Lcom/sleepycat/b/p/p;->a()J

    move-result-wide v0

    goto :goto_0

    .line 211
    :cond_3
    sget-boolean v0, Lcom/sleepycat/b/p/ai;->c:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Internal error calling getLong() with unknown stat type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v0, p0, Lcom/sleepycat/b/p/ai;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v0, Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 307
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/af;

    .line 308
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
