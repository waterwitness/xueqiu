.class public final Lcom/xueqiu/android/view/wheel/a;
.super Ljava/lang/Object;
.source "ItemsRange.java"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, v0}, Lcom/xueqiu/android/view/wheel/a;-><init>(II)V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/xueqiu/android/view/wheel/a;->a:I

    .line 46
    iput p2, p0, Lcom/xueqiu/android/view/wheel/a;->b:I

    .line 47
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 62
    .line 1054
    iget v0, p0, Lcom/xueqiu/android/view/wheel/a;->a:I

    .line 1070
    iget v1, p0, Lcom/xueqiu/android/view/wheel/a;->b:I

    .line 62
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
