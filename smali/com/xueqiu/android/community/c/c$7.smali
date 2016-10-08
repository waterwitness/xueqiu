.class final Lcom/xueqiu/android/community/c/c$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/c;->E()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/c;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/xueqiu/android/community/c/c$7;->a:Lcom/xueqiu/android/community/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 579
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$7;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->s(Lcom/xueqiu/android/community/c/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$7;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->t(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 581
    return-void
.end method
