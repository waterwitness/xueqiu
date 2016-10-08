.class final Lcom/xueqiu/android/common/a$4;
.super Ljava/lang/Object;
.source "AboutUsFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/common/a$4;->a:Lcom/xueqiu/android/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->getChannelEvent()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e20\u9053id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6d3b\u52a8\u53f7="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    return v0
.end method
