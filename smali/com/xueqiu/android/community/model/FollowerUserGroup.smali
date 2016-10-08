.class public Lcom/xueqiu/android/community/model/FollowerUserGroup;
.super Lcom/xueqiu/android/common/model/PagedGroup;
.source "FollowerUserGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/PagedGroup",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field private anonymousCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/PagedGroup;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/model/FollowerUserGroup;->anonymousCount:I

    return-void
.end method


# virtual methods
.method public getAnonymousCount()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/xueqiu/android/community/model/FollowerUserGroup;->anonymousCount:I

    return v0
.end method

.method public setAnonymousCount(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/xueqiu/android/community/model/FollowerUserGroup;->anonymousCount:I

    .line 19
    return-void
.end method
