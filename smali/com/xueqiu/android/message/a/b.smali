.class public final Lcom/xueqiu/android/message/a/b;
.super Ljava/lang/Object;
.source "AlphabetIndexUserAdapter.java"


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/xueqiu/android/message/a/b;
    .locals 2

    .prologue
    .line 459
    new-instance v1, Lcom/xueqiu/android/message/a/b;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/b;-><init>()V

    .line 460
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/b;->a:Landroid/widget/TextView;

    .line 461
    return-object v1
.end method
