.class public final Lorg/apache/cordova/ab;
.super Ljava/lang/Object;
.source "ScrollEvent.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private d:Landroid/view/View;


# direct methods
.method constructor <init>(IIILandroid/view/View;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p3, p0, Lorg/apache/cordova/ab;->a:I

    iput p1, p0, Lorg/apache/cordova/ab;->b:I

    iput p2, p0, Lorg/apache/cordova/ab;->c:I

    .line 49
    iput-object p4, p0, Lorg/apache/cordova/ab;->d:Landroid/view/View;

    .line 50
    return-void
.end method
