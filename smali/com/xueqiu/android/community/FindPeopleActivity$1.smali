.class final Lcom/xueqiu/android/community/FindPeopleActivity$1;
.super Ljava/lang/Object;
.source "FindPeopleActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/FindPeopleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/FindPeopleActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/FindPeopleActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/xueqiu/android/community/FindPeopleActivity$1;->a:Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity$1;->a:Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/FindPeopleActivity;->h()Landroid/app/Dialog;

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity$1;->a:Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/FindPeopleActivity;->a(Lcom/xueqiu/android/community/FindPeopleActivity;)Lcom/xueqiu/android/base/b/ap;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/FindPeopleActivity$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/FindPeopleActivity$1$1;-><init>(Lcom/xueqiu/android/community/FindPeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ap;->a(Lcom/xueqiu/android/base/b/i;)V

    .line 116
    return-void
.end method
