.class final Lcom/xueqiu/android/common/SNBTAuthView$1;
.super Ljava/lang/Object;
.source "SNBTAuthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/SNBTAuthView;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/SNBTAuthView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/SNBTAuthView;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/common/SNBTAuthView$1;->a:Lcom/xueqiu/android/common/SNBTAuthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/common/SNBTAuthView$1;->a:Lcom/xueqiu/android/common/SNBTAuthView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/SNBTAuthView;->finish()V

    .line 38
    return-void
.end method
