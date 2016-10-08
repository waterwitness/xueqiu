.class public final Lorg/vudroid/a/b;
.super Ljava/lang/Object;
.source "DecodeServiceBase.java"

# interfaces
.implements Lorg/vudroid/a/a;


# instance fields
.field private final a:Lorg/vudroid/a/a/a;

.field private b:Lorg/vudroid/a/a/b;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/vudroid/a/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/content/ContentResolver;

.field private g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/vudroid/a/a/a;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/a/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/vudroid/a/b;->d:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/vudroid/a/b;->e:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/vudroid/a/b;->g:Ljava/util/Queue;

    .line 41
    iput-object p1, p0, Lorg/vudroid/a/b;->a:Lorg/vudroid/a/a/a;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/vudroid/a/b;->b:Lorg/vudroid/a/a/b;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/vudroid/a/b;->b:Lorg/vudroid/a/a/b;

    invoke-interface {v0}, Lorg/vudroid/a/a/b;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)Lorg/vudroid/a/a/c;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lorg/vudroid/a/b;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/vudroid/a/b;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/vudroid/a/b;->b:Lorg/vudroid/a/a/b;

    if-nez v0, :cond_1

    .line 147
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/vudroid/a/b;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lorg/vudroid/a/b;->b:Lorg/vudroid/a/a/b;

    invoke-interface {v3, p1}, Lorg/vudroid/a/a/b;->a(I)Lorg/vudroid/a/a/c;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lorg/vudroid/a/b;->g:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lorg/vudroid/a/b;->g:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lorg/vudroid/a/b;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    .line 153
    iget-object v0, p0, Lorg/vudroid/a/b;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 154
    iget-object v1, p0, Lorg/vudroid/a/b;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/a/a/c;

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v0}, Lorg/vudroid/a/a/c;->c()V

    .line 160
    :cond_2
    iget-object v0, p0, Lorg/vudroid/a/b;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/a/a/c;

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lorg/vudroid/a/b;->f:Landroid/content/ContentResolver;

    .line 47
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 54
    iget-object v6, p0, Lorg/vudroid/a/b;->a:Lorg/vudroid/a/a/a;

    iget-object v0, p0, Lorg/vudroid/a/b;->f:Landroid/content/ContentResolver;

    .line 1011
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v6, v0}, Lorg/vudroid/a/a/a;->a(Ljava/lang/String;)Lorg/vudroid/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/a/b;->b:Lorg/vudroid/a/a/b;

    .line 55
    return-void

    .line 1015
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v7

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1016
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1020
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t retrieve path from uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0}, Lorg/vudroid/a/b;->a(I)Lorg/vudroid/a/a/c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/vudroid/a/b;->a(I)Lorg/vudroid/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/vudroid/a/a/c;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lorg/vudroid/a/b;->a(I)Lorg/vudroid/a/a/c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/vudroid/a/b;->a(I)Lorg/vudroid/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/vudroid/a/a/c;->b()I

    move-result v0

    goto :goto_0
.end method
