import React from 'react';
export default class About extends React.Component {
    render() {
        return (
            <React.Fragment>
                <h1 align="center">About this application</h1>

                <div className="center jumbotron">
                    <p>
                        This web application was developed to search Oregon
                        State University's course reviews. The site was built
                        using Ruby on Rails. Currently, the application is a
                        student project, under development. It was started by
                        one developer, and is currently being developed further
                        by a small team at Oregon State University. We are
                        looking for designers and front-end engineers who can
                        improve the design and User Experience of this
                        application. If you have interest to work on this
                        application, please feel free to contact{' '}
                        <a href="mailto:muraokan@oregonstate.edu?subject=PortfolioContact">
                            muraokan@oregonstate.edu
                        </a>
                        ,
                        <a href="mailto:stauffern@oregonstate.edu?subject=PortfolioContact">
                            stauffern@oregonstate.edu
                        </a>
                        , or{' '}
                        <a href="mailto:doolittg@oregonstate.edu?subject=PortfolioContact">
                            doolittg@oregonstate.edu
                        </a>
                        .
                    </p>
                    <p>
                        オレゴン州立大学の授業を検索、管理、新規作成を出来るアプリケーションです。Ruby
                        On
                        Railsを使い一人で作成したのですがサーバーサイド、デザインやフロントエンドなどでお手伝いいただける方を募集しています。
                        将来的にはオレゴン州立大学に限らずこのアプリケーションを他の大学にも使ってもらえるようなサービスにしたいと思っています。
                        興味のある方は是非こちらのメールアドレス{' '}
                        <a href="mailto:muraokan@oregonstate.edu?subject=PortfolioContact">
                            muraokan@oregonstate.edu
                        </a>
                        ,
                        <a href="mailto:stauffern@oregonstate.edu?subject=PortfolioContact">
                            stauffern@oregonstate.edu
                        </a>
                        , or{' '}
                        <a href="mailto:doolittg@oregonstate.edu?subject=PortfolioContact">
                            doolittg@oregonstate.edu
                        </a>{' '}
                        までご連絡ください。また私個人のポートフォリオサイトも宜しかったらご覧ください。
                    </p>
                </div>
            </React.Fragment>
        );
    }
}
