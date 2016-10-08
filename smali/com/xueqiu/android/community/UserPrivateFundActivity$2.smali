.class final Lcom/xueqiu/android/community/UserPrivateFundActivity$2;
.super Ljava/lang/Object;
.source "UserPrivateFundActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserPrivateFundActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/SimpleFund;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserPrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserPrivateFundActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity$2;->a:Lcom/xueqiu/android/community/UserPrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 60
    check-cast p1, Ljava/util/ArrayList;

    .line 1063
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/SimpleFund;

    .line 1064
    iget-object v2, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity$2;->a:Lcom/xueqiu/android/community/UserPrivateFundActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->b(Lcom/xueqiu/android/community/UserPrivateFundActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/model/SimpleFund;->setManager(Ljava/lang/String;)V

    goto :goto_0

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity$2;->a:Lcom/xueqiu/android/community/UserPrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->a(Lcom/xueqiu/android/community/UserPrivateFundActivity;)Lcom/xueqiu/android/community/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/community/a/m;->a(Ljava/util/ArrayList;)V

    .line 1068
    iget-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity$2;->a:Lcom/xueqiu/android/community/UserPrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->a(Lcom/xueqiu/android/community/UserPrivateFundActivity;)Lcom/xueqiu/android/community/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/m;->notifyDataSetChanged()V

    .line 60
    return-void
.end method
