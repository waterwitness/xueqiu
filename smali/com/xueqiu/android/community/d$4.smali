.class final Lcom/xueqiu/android/community/d$4;
.super Ljava/lang/Object;
.source "FindPeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/xueqiu/android/community/d$4;->a:Lcom/xueqiu/android/community/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/community/d$4;->a:Lcom/xueqiu/android/community/d;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/d$4;->a:Lcom/xueqiu/android/community/d;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/d;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f040010

    const v3, 0x7f040008

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/community/d;->a(Landroid/content/Intent;II)V

    .line 204
    return-void
.end method
