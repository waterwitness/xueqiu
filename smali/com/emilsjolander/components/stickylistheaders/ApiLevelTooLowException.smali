.class public Lcom/emilsjolander/components/stickylistheaders/ApiLevelTooLowException;
.super Ljava/lang/RuntimeException;
.source "ApiLevelTooLowException.java"


# static fields
.field private static final serialVersionUID:J = -0x4c0d1d2484d6c235L


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requires API level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
