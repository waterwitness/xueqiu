.class final Lcom/xueqiu/android/community/c/m$1;
.super Ljava/lang/Object;
.source "PaidMentionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/m;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/m;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/xueqiu/android/community/c/m$1;->a:Lcom/xueqiu/android/community/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc21

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$1;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/m;->a(Lcom/xueqiu/android/community/c/m;)V

    .line 121
    return-void
.end method
