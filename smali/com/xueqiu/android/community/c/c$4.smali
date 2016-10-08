.class final Lcom/xueqiu/android/community/c/c$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/c;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/xueqiu/android/community/c/c$4;->a:Lcom/xueqiu/android/community/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$4;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    const-string v1, "extra_group_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$4;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/c;->a(Landroid/content/Intent;)V

    .line 261
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 263
    return-void
.end method
