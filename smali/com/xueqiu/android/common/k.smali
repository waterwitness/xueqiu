.class public final Lcom/xueqiu/android/common/k;
.super Ljava/lang/Object;
.source "MainActivity.java"


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/common/l;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/k;->a:Ljava/util/HashMap;

    .line 710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/k;->b:Ljava/util/HashMap;

    .line 714
    iput-object p1, p0, Lcom/xueqiu/android/common/k;->c:Landroid/app/Activity;

    .line 715
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/xueqiu/android/common/l;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/xueqiu/android/common/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/l;

    .line 725
    return-object v0
.end method
