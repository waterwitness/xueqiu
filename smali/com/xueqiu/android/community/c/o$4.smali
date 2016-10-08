.class final Lcom/xueqiu/android/community/c/o$4;
.super Ljava/lang/Object;
.source "PublicTimelineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$4;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$4;->a:Lcom/xueqiu/android/community/c/o;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$4;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/o;->m(Lcom/xueqiu/android/community/c/o;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/community/c/o;J)V

    .line 341
    return-void
.end method
