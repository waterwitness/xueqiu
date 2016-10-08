.class final Lb/a/a/c$1;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lb/a/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/c;


# direct methods
.method constructor <init>(Lb/a/a/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lb/a/a/c$1;->a:Lb/a/a/c;

    .line 55
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1058
    new-instance v0, Lb/a/a/d;

    invoke-direct {v0}, Lb/a/a/d;-><init>()V

    .line 1
    return-object v0
.end method
