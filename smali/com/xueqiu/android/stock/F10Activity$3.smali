.class final Lcom/xueqiu/android/stock/F10Activity$3;
.super Ljava/lang/Object;
.source "F10Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/F10Activity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/F10Activity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/F10Activity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/stock/F10Activity$3;->a:Lcom/xueqiu/android/stock/F10Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity$3;->a:Lcom/xueqiu/android/stock/F10Activity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/F10Activity;->finish()V

    .line 158
    return-void
.end method
