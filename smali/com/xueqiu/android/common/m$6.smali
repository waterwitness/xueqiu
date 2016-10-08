.class final Lcom/xueqiu/android/common/m$6;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/m;->a(Landroid/view/View;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

.field final synthetic b:Lcom/xueqiu/android/common/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/xueqiu/android/common/m$6;->b:Lcom/xueqiu/android/common/m;

    iput-object p2, p0, Lcom/xueqiu/android/common/m$6;->a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 897
    const-string v0, "IDENTIFY"

    iget-object v1, p0, Lcom/xueqiu/android/common/m$6;->a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xbb8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 899
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 901
    :cond_0
    invoke-static {p1}, Lcom/xueqiu/android/common/m;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/xueqiu/android/common/m$6;->b:Lcom/xueqiu/android/common/m;

    iget-object v1, p0, Lcom/xueqiu/android/common/m$6;->a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/common/m;->a(Lcom/xueqiu/android/common/m;Landroid/view/View;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V

    .line 1069
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 905
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/common/m$6;->a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broker/myaccount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/xueqiu/android/common/m$6;->b:Lcom/xueqiu/android/common/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 2152
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 912
    :goto_0
    return-void

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/m$6;->a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/m$6;->b:Lcom/xueqiu/android/common/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
