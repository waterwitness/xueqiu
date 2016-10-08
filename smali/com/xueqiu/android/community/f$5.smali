.class final Lcom/xueqiu/android/community/f$5;
.super Lcom/xueqiu/android/base/b/p;
.source "FindPeopleFromWeiBoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/community/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/f;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/xueqiu/android/community/f$5;->b:Lcom/xueqiu/android/community/f;

    iput-object p3, p0, Lcom/xueqiu/android/community/f$5;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 312
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 309
    check-cast p1, Ljava/lang/Boolean;

    .line 1317
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/xueqiu/android/community/f$5;->b:Lcom/xueqiu/android/community/f;

    invoke-static {v0}, Lcom/xueqiu/android/community/f;->b(Lcom/xueqiu/android/community/f;)Lcom/xueqiu/android/community/a/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ba;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/f$5;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1319
    iget-object v0, p0, Lcom/xueqiu/android/community/f$5;->b:Lcom/xueqiu/android/community/f;

    invoke-static {v0}, Lcom/xueqiu/android/community/f;->b(Lcom/xueqiu/android/community/f;)Lcom/xueqiu/android/community/a/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ba;->notifyDataSetChanged()V

    :goto_0
    return-void

    .line 1321
    :cond_0
    const v0, 0x7f070250

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method
