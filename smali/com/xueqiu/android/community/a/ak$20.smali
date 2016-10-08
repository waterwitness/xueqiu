.class final Lcom/xueqiu/android/community/a/ak$20;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;ILcom/xueqiu/android/community/model/RecommendCard;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/community/model/RecommendCard;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;ILcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$20;->c:Lcom/xueqiu/android/community/a/ak;

    iput p2, p0, Lcom/xueqiu/android/community/a/ak$20;->a:I

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$20;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$20;->c:Lcom/xueqiu/android/community/a/ak;

    iget v1, p0, Lcom/xueqiu/android/community/a/ak$20;->a:I

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$20;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendCard;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/community/a/ak;->a(Lcom/xueqiu/android/community/a/ak;ILjava/lang/String;)V

    .line 1601
    return-void
.end method
