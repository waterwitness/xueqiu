.class public final Lcom/sleepycat/b/j/f;
.super Ljava/lang/Object;
.source "StatManager.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/j/d;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sleepycat/b/j/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sleepycat/b/j/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/j/d;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sleepycat/b/j/f;->a:Lcom/sleepycat/b/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/j/f;->b:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/j/f;->c:Ljava/util/ArrayList;

    .line 193
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sleepycat/b/p/ai;

    .line 1082
    iget-object v0, v1, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sleepycat/b/p/x;

    if-eqz v4, :cond_2

    .line 197
    iget-object v4, p0, Lcom/sleepycat/b/j/f;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/sleepycat/b/j/g;

    .line 1161
    iget-object v6, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ag;

    invoke-direct {v5, p0, v6, v0}, Lcom/sleepycat/b/j/g;-><init>(Lcom/sleepycat/b/j/f;Ljava/lang/String;Lcom/sleepycat/b/p/ag;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sleepycat/b/p/y;

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/sleepycat/b/j/f;->b:Ljava/util/ArrayList;

    new-instance v5, Lcom/sleepycat/b/j/g;

    .line 2161
    iget-object v6, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ag;

    invoke-direct {v5, p0, v6, v0}, Lcom/sleepycat/b/j/g;-><init>(Lcom/sleepycat/b/j/f;Ljava/lang/String;Lcom/sleepycat/b/p/ag;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sleepycat/b/j/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/j/g;

    .line 208
    iget-object v1, v0, Lcom/sleepycat/b/j/g;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/ai;

    iget-object v2, v0, Lcom/sleepycat/b/j/g;->b:Lcom/sleepycat/b/p/ag;

    .line 2223
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/y;

    .line 208
    iget-object v2, v0, Lcom/sleepycat/b/j/g;->a:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/p/ai;

    iget-object v0, v0, Lcom/sleepycat/b/j/g;->b:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/b/p/y;->a(J)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/j/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/j/g;

    .line 213
    iget-object v1, v0, Lcom/sleepycat/b/j/g;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/ai;

    iget-object v2, v0, Lcom/sleepycat/b/j/g;->b:Lcom/sleepycat/b/p/ag;

    .line 2227
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/x;

    .line 213
    iget-object v2, v0, Lcom/sleepycat/b/j/g;->a:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/p/ai;

    iget-object v0, v0, Lcom/sleepycat/b/j/g;->b:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/b/p/x;->a(J)Z

    goto :goto_1

    .line 217
    :cond_1
    return-void
.end method
