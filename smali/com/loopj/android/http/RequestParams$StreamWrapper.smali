.class public Lcom/loopj/android/http/RequestParams$StreamWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# instance fields
.field public final autoClose:Z

.field public final contentType:Ljava/lang/String;

.field public final inputStream:Ljava/io/InputStream;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 606
    iput-object p2, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    .line 607
    iput-object p3, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 608
    iput-boolean p4, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    .line 609
    return-void
.end method

.method static newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;
    .locals 1

    .prologue
    .line 612
    new-instance v0, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    if-nez p2, :cond_0

    const-string p2, "application/octet-stream"

    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/loopj/android/http/RequestParams$StreamWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
