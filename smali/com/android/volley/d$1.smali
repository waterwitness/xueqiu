.class final Lcom/android/volley/d$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/d;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/n;

.field final synthetic b:Lcom/android/volley/d;


# direct methods
.method constructor <init>(Lcom/android/volley/d;Lcom/android/volley/n;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/volley/d$1;->b:Lcom/android/volley/d;

    iput-object p2, p0, Lcom/android/volley/d$1;->a:Lcom/android/volley/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/d$1;->b:Lcom/android/volley/d;

    invoke-static {v0}, Lcom/android/volley/d;->a(Lcom/android/volley/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/d$1;->a:Lcom/android/volley/n;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
