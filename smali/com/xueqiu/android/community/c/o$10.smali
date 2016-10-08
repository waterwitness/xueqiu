.class final Lcom/xueqiu/android/community/c/o$10;
.super Lcom/xueqiu/android/base/b/p;
.source "PublicTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/o;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/cube/model/Editorial;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$10;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 526
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 527
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 523
    check-cast p1, Ljava/util/ArrayList;

    .line 1531
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$10;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/community/c/o;Ljava/util/List;)V

    .line 1532
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$10;->a:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cached_editorials"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method
