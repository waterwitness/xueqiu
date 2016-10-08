.class public Lcom/xueqiu/android/base/storage/ResultSet;
.super Ljava/lang/Object;
.source "ResultSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private founded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private missed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xueqiu/android/base/storage/ResultSet;->founded:Ljava/util/Set;

    .line 21
    iput-object p2, p0, Lcom/xueqiu/android/base/storage/ResultSet;->missed:Ljava/util/Set;

    .line 22
    return-void
.end method


# virtual methods
.method public founded()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/ResultSet;->founded:Ljava/util/Set;

    return-object v0
.end method

.method public missed()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/ResultSet;->missed:Ljava/util/Set;

    return-object v0
.end method
