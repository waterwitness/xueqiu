.class final Lcom/xueqiu/android/community/c/o$18;
.super Ljava/lang/Object;
.source "PublicTimelineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$18;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$18;->a:Lcom/xueqiu/android/community/c/o;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/o$18;->a:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f040010

    const v3, 0x7f040008

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/community/c/o;->a(Landroid/content/Intent;II)V

    .line 227
    return-void
.end method
