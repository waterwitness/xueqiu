.class final Lcom/xueqiu/android/common/search/USearchActivity$1;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$1;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$1;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->a(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    .line 1194
    invoke-static {}, Lcom/xueqiu/android/common/search/a;->a()Lcom/xueqiu/android/common/search/a;

    move-result-object v1

    .line 2076
    sget-object v2, Lcom/xueqiu/android/common/search/a;->a:Ljava/lang/String;

    const-string v3, "clearSearchRecord"

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v2, v1, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2078
    invoke-virtual {v1}, Lcom/xueqiu/android/common/search/a;->b()V

    .line 1195
    iget-object v1, v0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/xueqiu/android/common/search/a/c;->b(Z)V

    .line 1196
    iget-object v0, v0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/common/search/a/c;->j()V

    .line 127
    return-void
.end method
