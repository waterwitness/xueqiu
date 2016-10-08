.class public abstract Lcom/c/a/n;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field c:Landroid/view/animation/Interpolator;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/n;->d:Z

    .line 320
    return-void
.end method

.method public static a(FF)Lcom/c/a/n;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/c/a/o;

    invoke-direct {v0, p0, p1}, Lcom/c/a/o;-><init>(FF)V

    return-object v0
.end method

.method public static a(FI)Lcom/c/a/n;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/c/a/p;

    invoke-direct {v0, p0, p1}, Lcom/c/a/p;-><init>(FI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract b()Lcom/c/a/n;
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/c/a/n;->b()Lcom/c/a/n;

    move-result-object v0

    return-object v0
.end method
