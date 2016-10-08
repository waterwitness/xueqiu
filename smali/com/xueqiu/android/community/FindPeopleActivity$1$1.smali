.class final Lcom/xueqiu/android/community/FindPeopleActivity$1$1;
.super Ljava/lang/Object;
.source "FindPeopleActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/FindPeopleActivity$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/FindPeopleActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/FindPeopleActivity$1;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/community/FindPeopleActivity$1$1;->a:Lcom/xueqiu/android/community/FindPeopleActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity$1$1;->a:Lcom/xueqiu/android/community/FindPeopleActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/community/FindPeopleActivity$1;->a:Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/FindPeopleActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v1, "fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d;

    .line 111
    invoke-static {v0}, Lcom/xueqiu/android/community/d;->a(Lcom/xueqiu/android/community/d;)V

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity$1$1;->a:Lcom/xueqiu/android/community/FindPeopleActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/community/FindPeopleActivity$1;->a:Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/FindPeopleActivity;->i()V

    .line 114
    return-void
.end method
