.class final Lcom/xueqiu/android/community/a/k$1;
.super Ljava/lang/Object;
.source "PaidQuestionListAdapter.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/k;-><init>(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/k;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/community/a/k$1;->a:Lcom/xueqiu/android/community/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/community/a/k$1;->a:Lcom/xueqiu/android/community/a/k;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 70
    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/community/a/k$1;->a:Lcom/xueqiu/android/community/a/k;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/k$1;->a:Lcom/xueqiu/android/community/a/k;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 71
    const v2, 0x7f070164

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/k;->a(Lcom/xueqiu/android/community/a/k;F)F

    .line 73
    :cond_0
    return-void
.end method
