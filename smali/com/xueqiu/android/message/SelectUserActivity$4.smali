.class final Lcom/xueqiu/android/message/SelectUserActivity$4;
.super Ljava/lang/Object;
.source "SelectUserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/SelectUserActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/SelectUserActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/SelectUserActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/xueqiu/android/message/SelectUserActivity$4;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$4;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/SelectUserActivity;->finish()V

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity$4;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method
